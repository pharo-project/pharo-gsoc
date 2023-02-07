import React from 'react';
import { useParams } from 'react-router-dom';

import './style.css';

import $ from "jquery"
import * as URLS from '../../constants/urls'

// import { Dialog } from "@mui/material"
// import * as URLS from '../../constants/urls'
import logo from '../../img/logo-big.png'
import SupervisorMarker from '../IdeasPage/SupervisorMarker';

const getContentsOfFileFromURL = url => {
  var result = null
  $.ajax({
    url: url,
    type: 'get',
    dataType: 'text',
    async: false,
    success: function (data) {
      result = data
    }
  })
  return result
}

const getJsonFromURL = url =>
  JSON.parse(getContentsOfFileFromURL(url))

const loadAllIdeas = () =>
  getJsonFromURL(URLS.IDEAS_FILE);

const loadIdea = ideaId =>
  loadAllIdeas().find(idea => idea.id === ideaId);

const buildTranslate = translations =>
  (key) => translations[key] || `Missing translation for ${key}`;

export const diffcultyEmoji = {
  'Easy': '😊',
  'Medium': '😉',
  'Hard': '🙃',
}

var supervisorsData = getJsonFromURL(URLS.SUPERVISORS_FILE)

supervisorsData = supervisorsData.map(each => {
  // Commented out because it is very slow :(

  /*const githubUser = each.github ?
    getJsonFromURL(`https://api.github.com/users/${each.github}`) :
    null*/

  const githubUser = null

  const picture = githubUser ? githubUser.avatar_url : null
  return { ...each, pictureUrl: picture }
})

const translationsEN = {
  'context': 'Context',
  'goal': 'Goal',
  'mentors': 'Mentors',
  'look': 'Look this project in',
  'skills': 'Skills',
  'required': 'Required',
  'preferred': 'Preferred',
  'timeSize': 'Size',
  'expectedTime': '175 ~ 350 hour.',
  'difficulty': 'Difficulty',
  'Easy': 'Easy',
  'Medium': 'Medium',
  'Hard': 'Hard',
}

export default function IdeaPage() {

  let { id } = useParams();

  var idea = loadIdea(id);
  const { title, description, img, goal, url, supervisors, skills, size, difficulty } = idea
  const t = buildTranslate(translationsEN)

  return (
      <div className="container">
        <div className="header-modal">
          <h1 className="title-modal">{title}</h1>
          <img
            className="img-modal"
            src={img ? URLS.IMAGE_FOLDER + '/' + img : logo}
            alt={title}
          />
        </div>

        <h3>{t('context')}</h3>
        <p>{description}</p>

        <h3>{t('goal')}</h3>
        <p>{goal}</p>

        <h3>{t('skills')}</h3>
        <p><i>{t('required')}:</i> {skills?.required}</p>
        <p><i>{t('preferred')}:</i> {skills?.preferred}</p>

        <h3>{t('timeSize')}</h3>
        <p>{size}</p>

        <h3>{t('difficulty')}</h3>
        <p>{t(difficulty)} <span role="img" aria-label="emoji">{diffcultyEmoji[difficulty]}</span></p>

        <h3>{t('mentors')}</h3>
        {supervisors?.map((mentor, i) => <div key={i}>{
          <SupervisorMarker supervisor={supervisorsData.find(each => each.name === mentor)} />
        }</div>)}

        {url && <>
          <br /><br />
          <span>
            <span role="img" aria-label="arrow">➡️</span>&nbsp;
            {t('look')} &nbsp;
            <a href={url} target="_blank" rel="noopener noreferrer">{url}</a>
            &nbsp;<span role="img" aria-label="arrow">⬅️</span>
          </span>
        </>}

      </div>
  )
}