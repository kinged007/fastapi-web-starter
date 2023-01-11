from rich.console import Console 
import logging
from rich.logging import RichHandler
from rich import print
from rich.pretty import Pretty
from rich.panel import Panel

logging.basicConfig(
    level="NOTSET",
    format="%(message)s",
    datefmt="[%X]",
    handlers=[RichHandler(show_time=True,markup=True,rich_tracebacks=True)]
)

console = Console()
log = logging.getLogger("rich")

def pprint(input):
    print(Panel(Pretty(input)))