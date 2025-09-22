import React, { useState, useMemo, useCallback } from 'react';

const NumberListAnalyzer = () => {
  const [numberInput, setNumberInput] = useState('');
  const [numberList, setNumberList] = useState([]);

  const handleAddNumber = () => {
    const parsed = parseFloat(numberInput);
    if (!isNaN(parsed)) {
      setNumberList(prev => [...prev, parsed]);
      setNumberInput('');
    }
  };


  const handleRemove = useCallback((indexToRemove) => {
    setNumberList(prev => prev.filter((_, idx) => idx !== indexToRemove));
  }, []);


  const sum = useMemo(() => {
    return numberList.reduce((acc, num) => acc + num, 0);
  }, [numberList]);

  const max = useMemo(() => {
    return numberList.length === 0 ? null : Math.max(...numberList);
  }, [numberList]);

  return (
    <div style={{ padding: '20px', maxWidth: '400px', margin: 'auto' }}>
      <h2>Number List Analyzer</h2>

      <input
        type="number"
        value={numberInput}
        onChange={(e) => setNumberInput(e.target.value)}
        placeholder="Enter a number"
      />
      <button onClick={handleAddNumber} style={{ marginLeft: '10px' }}>
        Add
      </button>

      <ul>
        {numberList.map((num, index) => (
          <li key={index}>
            {num}
            <button onClick={() => handleRemove(index)} style={{ marginLeft: '10px' }}>
              Remove
            </button>
          </li>
        ))}
      </ul>

      <div>
        <p><strong>Sum:</strong> {sum}</p>
        <p><strong>Max:</strong> {max !== null ? max : 'N/A'}</p>
      </div>
    </div>
  );
};

export default NumberListAnalyzer;
