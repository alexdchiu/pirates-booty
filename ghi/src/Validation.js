const validation = (values) => {

    let errors={};

    if(!values.username){
        errors.username="Username is required"
    }

    if(!values.password){
        errors.password="Password is required"
    }

    if(!values.password2){
        errors.password2="Password is required";
    } else if (values.password2 !== values.password){
        errors.password2 = "Passwords do not match";
    }

    if(!values.first_name){
        errors.first_name="First name is required"
    }

    if(!values.last_name){
        errors.last_name="Last name is required"
    }

    if(!values.email){
        errors.email="Email is required"
    } else if(!/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i.test(values.email)){
        errors.email = "Email address is invalid"
    }

    if(!values.birthday){
        errors.birthday="Birthday is required"
    }

    return errors;
}

export default validation