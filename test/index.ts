/* highlight.ts - Neovim highlight sample */

export enum Color {
  Red = 1,
  Green,
  Blue,
}

export type ID = number | string;

export interface User {
  id: ID;
  name: string;
  email?: string;
  roles: Array<string>;
  meta: [number, string];
}

export type ReadonlyUser = Readonly<User>;

export class Counter {
  private count = 0;

  constructor(public name: string) {}

  increment(n = 1): this {
    this.count += n;
    return this;
  }

  get value(): number {
    return this.count;
  }

  reset(): void {
    this.count = 0;
  }
}

export function identity<T>(x: T): T {
  return x;
}

export const add = (a: number, b = 2): number => a + b;

export async function fetchMock(url: string): Promise<string> {
  // simulate network fetch
  const res = await Promise.resolve({
    ok: true,
    text: async () => `fetched from ${url}`,
  });
  if (!res.ok) throw new Error("Network error");
  return await res.text();
}

export function isString(v: unknown): v is string {
  return typeof v === "string";
}

const regex = /(\w+)\s*=\s*(\d+)/g;
const json = {
  nested: {
    arr: [1, 2, 3],
    obj: { a: "alpha", b: "beta" },
    func: () => "ok",
  },
  value: null as string | null,
};

const [first, ...rest] = json.nested.arr;
const id: number = (json.nested.arr?.[0] ?? -1) as number;

type Keys<T> = { [K in keyof T]: K };
type ReadonlyKeys<T> = { readonly [K in keyof T]: T[K] };

function tag(strings: TemplateStringsArray, ...values: any[]) {
  return strings.reduce((s, str, i) => s + str + (values[i] ?? ""), "");
}

const message = tag`User ${"alice"} has id ${42}`;

export default function main(): void {
  // Quick runtime behavior to exercise syntax when executed
  const u: User = { id: 42, name: "Alice", roles: ["admin"], meta: [1, "m"] };
  const c = new Counter("demo");
  c.increment();
  c.increment(add(3, 4));
  // for...of, for...in, optional chaining
  for (const v of json.nested.arr) {
    // no-op
  }
  for (const k in json.nested.obj) {
    // no-op
  }

  // regex test
  const s = "x=10 y=20";
  let m: RegExpExecArray | null;
  while ((m = regex.exec(s))) {
    /* comment inside loop */
  }

  // type guard usage
  const maybe: unknown = "hello";
  if (isString(maybe)) {
    // string-specific highlight
    const len = maybe.length;
  }

  // console output to observe runtime
  // eslint-disable-next-line no-console
  console.log(message, id, c.value, Color.Green);
}
