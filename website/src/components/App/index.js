import React from 'react';
import {
  BrowserRouter as Router,
  Route,
  Routes
} from 'react-router-dom';

import Navigation from '../Navigation';
import IdeasPage from '../IdeasPage';
import IdeaPage from '../IdeaPage';
import MentorsPage from '../MentorsPage';
import CallForStudentsPage from '../CallForStudentsPage';

import * as ROUTES from '../../constants/routes';

const App = () => (
  <Router>
    <div>
      <Navigation />
      <Routes>
        <Route exact path={ROUTES.LANDING} element={ <CallForStudentsPage/> } />
        <Route exact path={ROUTES.IDEAS} element={ <IdeasPage/> } />
        <Route exact path={ROUTES.MENTORS} element={ <MentorsPage/> } />
        <Route exact path={ROUTES.CALL_FOR_STUDENTS} element={ <CallForStudentsPage/> } />
        <Route exact path={'/:id'} element={ <IdeaPage/>} />
      </Routes>
    </div>
  </Router>
);

export default App;
