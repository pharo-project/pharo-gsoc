import React from 'react';

import './style.css';
import defaultSupervisorImage from './img/defaultSupervisorImage.png';

const SupervisorMarker = (props) => (
  <div class="supervisor">
    <img src={defaultSupervisorImage} alt="" />
    <p>{props.supervisor.name}</p>
    <a href={`mailto:${props.supervisor.email}`}>{props.supervisor.email}</a>
  </div>
);

export default SupervisorMarker;
