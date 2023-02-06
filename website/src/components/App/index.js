import React from 'react';
import {
  BrowserRouter as Router,
  Route,
  Routes
} from 'react-router-dom';

import Navigation from '../Navigation';
import IdeasPage from '../IdeasPage';
import MentorsPage from '../MentorsPage';
import CallForStudentsPage from '../CallForStudentsPage';

import * as ROUTES from '../../constants/routes';

const App = () => (
  <Router>
    <div>
      <Navigation />
      <Routes>
        <Route exact path={ROUTES.LANDING} element={ <CallForStudentsPage/> } />
        <Route path={ROUTES.IDEAS} element={ <IdeasPage/> } />
        <Route path={ROUTES.MENTORS} element={ <MentorsPage/> } />
        <Route path={ROUTES.CALL_FOR_STUDENTS} element={ <CallForStudentsPage/> } />
      </Routes>
    </div>
  </Router>
);

export default App;
