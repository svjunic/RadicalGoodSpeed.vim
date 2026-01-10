# vim: ft=python
"""ハイライト確認用サンプル
Contains examples of common Python syntax to test Neovim highlights.
"""

from __future__ import annotations
import re, sys
from dataclasses import dataclass
from typing import List, Iterator, Optional, Callable

# Constants and literals
PI = 3.14159
HEX = 0xDEADBEEF
BIG = 1_000_000
B = b"bytes\x00"
RAW = r"raw\nstring"
UNICODE = "日本語とemoji 🚀"
FLAG = True
NONE_VAL = None
ELLIP = ...

# TODO: ハイライトで TODO コメントを確認

@dataclass
class Example:
    """クラスのドキュメンテーション文字列"""
    name: str
    values: List[int]

    @property
    def total(self) -> int:
        return sum(self.values)

    def add(self, x: int) -> None:
        # inline comment
        self.values.append(x)

# デコレータの例
def deco(func: Callable[..., str]) -> Callable[..., str]:
    def wrapper(*args, **kwargs):
        result = func(*args, **kwargs)
        return f"[decorated]{result}"
    return wrapper

@deco
def greet(name: str) -> str:
    return f"Hello, {name}!"

# async/await, generator, comprehensions
async def async_counter(n: int) -> Iterator[int]:
    for i in range(n):
        yield i

def squares(n: int) -> List[int]:
    return [i * i for i in range(n) if i % 2 == 0]

gen_exp = (i for i in range(5))

# lambda, map/filter, unpacking
inc = lambda x: x + 1
mapped = list(map(inc, [1, 2, 3]))
filtered = list(filter(lambda x: x % 2 == 0, range(10)))
a, b, *rest = [1, 2, 3, 4]

# with, try/except/finally
def read_file(path: str) -> str:
    try:
        with open(path, "r", encoding="utf-8") as f:
            return f.read()
    except FileNotFoundError as e:
        # raise with chained exception
        raise RuntimeError("file missing") from e
    finally:
        pass

# regex and formatted strings
pattern = re.compile(r"(?P<word>\w+)-(?P<num>\d+)")
m = pattern.search("test-123")
if m:
    word = m.group("word")
    num = int(m.group("num"))

def format_example(name: str, n: int) -> str:
    return f"{name!r} has {n:,} items (hex={HEX:#x})"

# type comments and annotations in expressions
x: Optional[int] = None  # type: Optional[int]

# complex expression, slicing, attribute access, method chaining
data = {"a": [1, 2, 3], "b": []}
first = data.get("a", [])[0:2]

# docstring with triple quotes and multiline string
LONG_TEXT = """長い文字列の例
- 行1
- 行2
"""

# main guard
def main(argv: List[str] | None = None) -> int:
    argv = argv or sys.argv[1:]
    e = Example("sample", [1, 2, 3])
    e.add(4)
    print(greet("Neovim"))
    print(format_example(e.name, e.total))
    print(LONG_TEXT)
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
