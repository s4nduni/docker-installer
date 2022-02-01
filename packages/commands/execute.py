from subprocess import run  # From subprocess import run() function.
from sys import exit  # From sys import exit() function.


class Execute:
    """Run any given linux command."""

    def __init__(self) -> None:
        pass

    def run_command(self, command: str, sudo: bool = False) -> object:
        """Run any given linux command.

        Args:
            command (str): Linux command.
            sudo (bool, optional): True -> use sudo privilage. Defaults to False.

        Returns:
            object: Return the subprocess.run() function.
        """

        try:

            permission = (
                "" if (sudo == False) else "sudo"
            )  # If sudo = False -> permission = "", True -> permission = "sudo".

            return run(f"{permission} {command}", shell=True, text=True)

        except:

            print(
                f"Error! {command} failed."
            )  # If the run() function is not working, then print the error message.

            exit()  # Exit the program.
