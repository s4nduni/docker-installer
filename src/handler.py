from ..packages import Execute  # From packages/commands/execute import Execute.
from .constants import CMD  # From constants import CMD.


class Handler(Execute):
    """Handles the whole program.

    Args:
        Execute (class): Inheritance from Execute super class.
    """

    def __init__(self) -> None:
        pass

    def handler(self) -> None:
        """Run commands one by one."""

        print("\nDOCKER INSTALLER FOR UBUNTU\n")

        for item in CMD:
            self.run_command(item, sudo=True)
