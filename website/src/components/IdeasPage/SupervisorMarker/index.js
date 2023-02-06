import React from 'react';

import './style.css';
import defaultSupervisorImage from './img/defaultSupervisorImage.png';

const SupervisorMarker = (props) => (
  <div className="supervisor">
    <img src={props.supervisor.pictureUrl ? props.supervisor.pictureUrl : defaultSupervisorImage} alt="" />
    <div className="supervisor-info">
      <p className="supervisor-name">{props.supervisor.name}</p>
      <a href={`mailto:${props.supervisor.email}`}>{props.supervisor.email}</a>
    </div>
  </div>
);

export default SupervisorMarker;
