def get_grade(marks):
    if 90 <= marks <= 100:
        return 'A'
    elif 85 <= marks < 90:
        return 'B+'
    elif 79 <= marks < 85:
        return 'B'
    elif 70 <= marks < 79:
        return 'B-'
    elif 60 <= marks < 70:
        return 'C'
    elif 50 <= marks < 60:
        return 'D'
    else:
        return 'F'

def main():
    while True:
        try:
            marks = float(input("Enter the student's marks (0 to 100): "))
            if marks < 0 or marks > 100:
                print("Marks must be between 0 and 100. Please try again.")
                continue
        except ValueError:
            print("Invalid input. Please enter a numerical value for marks.")
            continue

        grade = get_grade(marks)
        print(f"The grade for {marks} marks is: {grade}")

        user_input = input("Do you want to enter more marks? (yes/no): ").strip().lower()
        if user_input != 'yes':
            print("Terminating the program.")
            break

if __name__ == "__main__":
    main()

