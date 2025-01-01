#Variable 

def main():
    
    # Ask the user for a variable name
    user_variable = input("Enter the variable name to check: ")

    # Check if the input is a valid variable name
    if not user_variable.isalpha():
        print("Invalid variable name. Please enter a valid variable name.")
        return

    # Set the variable to the input value
    global_variable = user_variable

    def exist():
        # Checks if it exists
        if global_variable == "Variable":
            print(f"{global_variable} is a valid variable")

        else:
            print(f"{global_variable} is not a valid variable")

    def boolean():
        # Checks if it has a boolean value

        if global_variable == True or global_variable == False:
                print(f"{global_variable} is a boolean")

        else:
            print(f"{global_variable} is not a boolean")

    def type_check():
        # Checks if it's a string, integer, float, or list

        if isinstance(eval(global_variable), str):
            print(f"{global_variable} is a string")

        elif isinstance(eval(global_variable), int):
            print(f"{global_variable} is an integer")

        elif isinstance(eval(global_variable), float):
            print(f"{global_variable} is a float")

        elif isinstance(eval(global_variable), list):
            print(f"{global_variable} is a list")

        else:
            print(f"{global_variable} is not a string, integer, float, or list")

    def length_check():
        # Checks the length of the string variable

        if isinstance(eval(global_variable), str):
            if len(eval(global_variable)) > 10:
                print(f"{global_variable} is a long string")

            else:
                print(f"{global_variable} is a short string")

        else:
            print(f"{global_variable} is not a string")

    def empty_check():
        # Checks if the variable is empty

        if not eval(global_variable):
            print(f"{global_variable} is empty")

        else:
            print(f"{global_variable} is not empty")

    # Call the functions
    exist()
    boolean()
    type_check()
    length_check()
    empty_check()

# Call the function
main()