import React from 'react';

import './style.css';

const ComplexityMarker = (props) => (
  <div className={`complexity-marker ${props.value.toLowerCase()}`}>
    {props.value}
  </div>
);

export default ComplexityMarker;
