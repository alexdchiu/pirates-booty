const validation = (values) => {

    let errors={};

    if(values.hasOwnProperty("username") && !values.username){
        errors.username="Username is required"
    }

    if(values.hasOwnProperty("password") && !values.password){
        errors.password="Password is required"
    }

    if(values.hasOwnProperty("first_name") && !values.first_name){
        errors.first_name="First name is required"
    }

    if(values.hasOwnProperty("last_name") && !values.last_name){
        errors.last_name="Last name is required"
    }

    if(values.hasOwnProperty("email") && !values.email){
        errors.email="Email is required"
    } else if(values.hasOwnProperty("email") && !/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i.test(values.email)){
        errors.email = "Email address is invalid"
    }

    return errors;
}

export default validation