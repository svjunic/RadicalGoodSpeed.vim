/* highlight.tsx - Neovim highlight sample */
import React, { useState, useEffect } from 'react';

type Item = {
  id: number;
  label: string;
  active?: boolean;
};

interface Props {
  title?: string;
  items?: Item[];
}

export const HighlightDemo: React.FC<Props> = ({ title = 'Demo', items = [] }) => {
  const [list, setList] = useState<Item[]>(items);
  const [count, setCount] = useState<number>(0);

  useEffect(() => {
    const timer = setInterval(() => setCount(c => c + 1), 1000);
    return () => clearInterval(timer);
  }, []);

  const toggle = (id: number) => {
    setList(prev => prev.map(it => it.id === id ? { ...it, active: !it.active } : it));
  };

  async function fetchItem<T = Item>(id: number): Promise<T | null> {
    // fake fetch
    return new Promise(resolve => setTimeout(() => resolve({ id, label: `Item ${id}` } as unknown as T), 200));
  }

  const add = async () => {
    const id = list.length + 1;
    const newItem = await fetchItem(id);
    if (newItem) setList(prev => [...prev, newItem as Item]);
  };

  return (
    <>
      <header>
        <h1>{title} <small>({count}s)</small></h1>
        <button onClick={() => setList([])}>Clear</button>
        <button onClick={add}>Add</button>
      </header>
      <ul>
        {list.length === 0 ? (
          <li className="empty">No items</li>
        ) : (
          list.map(item => (
            <li key={item.id} className={item.active ? 'active' : ''}>
              <span>{item.label}</span>
              <button onClick={() => toggle(item.id)}>Toggle</button>
            </li>
          ))
        )}
      </ul>
      <style jsx>{`
        ul { list-style: none; padding: 0; }
        li { padding: 0.5rem 0; display:flex; gap:0.5rem; align-items:center }
        .active { font-weight: 700; }
      `}</style>
    </>
  );
};

export default HighlightDemo;
