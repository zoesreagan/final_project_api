# Behest API

# Welcome to the Behest API.


You can access the following routes on the Behest API:

## USER

### 1. "../user/" <- Get the user who is currently logged in (GET)

If the request was successful, the API will return the following message:

{<br />
    success: true, <br />
    message: "Found user #{@user.id}", <br />
    found_user: @user <br />
}

### 2. "../user/register" <- Register a new user (POST)

If the desired username is already taken, the API will return the following message:

{<br />
    success: false, <br />
    message: "username already taken, try again" <br />
}

If registration was successful, the API will return the following message:

{ <br />
    success: true, <br />
    user_id: user.id, <br />
    username: user.username, <br />
    message: "you are logged in and you have a cookie attached to all the responses" <br />
}

### 3. "../user/login" <- Log in to Behest (POST)

If login was successful, the API will return the following message:

{ <br />
    success: true, <br />
    user_name: user.name, <br />
    user_id: user.id, <br />
    username: username, <br />
    message: "Login successful" <br />
}

If login was not successful, the API will return the following message:

{ <br />
    success: false, <br />
    message: "Invalid Username or password" <br />
}

### 4. "../user/:id" <- Edit an existing user (PUT)

If the attempt to edit a user's account was successful, the API will return the following message:

{ <br />
    success: true, <br />
    message: "User was successfully updated" <br />
}

If the new desired username has already been taken, the API will return the following message:

{ <br />
    success: false, <br />
    message: "username already taken, try again" <br />
}


### 5. "../user/logout" <- Log out of Behest (GET)

If the user was successfully logged out, the API will return the following message:

{ <br />
    success: true, <br />
    message: "you are logged out" <br />
}

## Forms

The user must be logged in to access their forms. If the user tries to hit any of the form routes without being logged in to Behest, the API will return the following message:

{ <br />
    success: false, <br />
    message: "you are not logged in" <br />
}

### 1. "../form/" <- Get the form for the current user (GET)

If the request is successful, the API will return the following message:

{ <br />
    success: true, <br />
    form: @form <br />
}

This will the form belonging to the current user.


### 2. "../form/" <- Create a new form (POST)

If the request is successful, the API will return the following message:

{ <br />
    success: true, <br />
    message: "Form #{@form.id} successfully created", <br />
    added_form: @form  <br />
}

To ensure all parts of the form were created, check the added_form object to make sure that form.id is *not null.*

### 4. "../form/:id" <- Update an existing form (PUT)

If the request is successful, the API will return the following message:

{ <br />
    success: true, <br />
    message: "You updated form \##{form.id}", <br />
    updated_form: @form, <br />
}

To ensure the form was updated successfully, check the updated_form object to make sure that form_id is *not null.*

### 5. "../form/" <- Delete an existing form (DELETE

If the request is successful, the API will return the following message:

{ <br />
    success: true, <br />
    message: "form #{@form.id} deleted successfully" <br />
