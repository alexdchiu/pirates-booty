import { createContext, useContext, useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
let internalToken = null;
let userData = null;

export function getToken() {
  return internalToken;
}

export async function getTokenInternal() {
  const url = `${process.env.REACT_APP_USERS}/users/accounts/me/token/`;
  try {
    const response = await fetch(url, {
      credentials: "include",
    });
    if (response.ok) {
      const data = await response.json();
      internalToken = data.token;
      return internalToken;
    }
  } catch (e) {}
  return false;
}
function handleErrorMessage(error) {
  if ("error" in error) {
    error = error.error;
    try {
      error = JSON.parse(error);
      if ("__all__" in error) {
        error = error.__all__;
      }
    } catch {}
  }
  if (Array.isArray(error)) {
    error = error.join("<br>");
  } else if (typeof error === "object") {
    error = Object.entries(error).reduce(
      (acc, x) => `${acc}<br>${x[0]}: ${x[1]}`,
      ""
    );
  }
  return error;
}

export async function getUserData(username) {
  const usernameurl = `${process.env.REACT_APP_USERS}/users/account/${username}`;
  try {
    const response = await fetch(usernameurl, {
      method: "get",
      credentials: "include",
    });
    if (response.ok) {
      const data = await response.json();
      // console.log(data)
      userData = data
      return userData
    }
  } catch (e) {}
  return false
}

export const AuthContext = createContext({
  token: null,
  setToken: () => null,
  user: null,
  setUser: () => null
});


export const AuthProvider = ({ children }) => {
  const [token, setToken] = useState(null);
  const [user, setUser] = useState({});
  return (
    <AuthContext.Provider value={{ token, setToken, user, setUser }}>
      {children}
    </AuthContext.Provider>
  );
};

export const useAuthContext = () => useContext(AuthContext);

export function useToken() {
  const { token, setToken, user, setUser } = useAuthContext();
  const navigate = useNavigate();

  useEffect(() => {
    async function fetchToken() {
      const token = await getTokenInternal();
      const user = await getUserData();
      // getUserData should require a param, not sure why it works without one right now..
      setToken(token);
      setUser(user)
    }
    if (!token) {
      fetchToken();
    }
  }, [setToken, token]);

  async function logout() {
    if (token) {
      const url = `${process.env.REACT_APP_USERS}/api/token/refresh/logout/`;
      await fetch(url, { method: "delete", credentials: "include" });
      internalToken = null;
      setToken(null);
      navigate("/");
    }
  }


  async function login(username, password) {
    const url = `${process.env.REACT_APP_USERS}/login/`;
    const usernameurl = `${process.env.REACT_APP_USERS}/users/account/${username}`;
    const form = new FormData();
    form.append("username", username);
    form.append("password", password);
    const response = await fetch(url, {
      method: "post",
      credentials: "include",
      body: form,
    });
    
    if (response.ok) {
      const token = await getTokenInternal();
      const user = await getUserData(username)
      setToken(token);
      setUser(user);
      return;
    }
  
    let error = await response.json()
    return handleErrorMessage(error)
  }

  return [token, login, logout, user];
}