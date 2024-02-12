import React, { useEffect} from "react";
import { useParams } from 'react-router-dom';

import ReactMarkdown from 'react-markdown';
import gfm from 'remark-gfm';
import math from 'remark-math';
import Tex from '@matejmazur/react-katex';
import 'katex/dist/katex.min.css';
import {Prism as SyntaxHighlighter} from 'react-syntax-highlighter';
import { prism } from 'react-syntax-highlighter/dist/esm/styles/prism';

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

export const projectSizeHours = {
  'Small': '(90 hours)',
  'Medium': '(175 hours)',
  'Large': '(350 hours)',
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
  'context': 'Description',
  'goal': 'Expected outcome',
  'mentors': 'Mentors',
  'look': 'Look this project in',
  'skills': 'Skills',
  'required': 'Required skills',
  'preferred': 'Preferred skills',
  'timeSize': 'Project size',
  'expectedTime': '175 ~ 350 hour.',
  'difficulty': 'Difficulty',
  'Easy': 'Easy',
  'Medium': 'Medium',
  'Hard': 'Hard',
}


export default function IdeaPage() {

  let { id } = useParams();

  var idea = loadIdea(id);
  const { title, description, img, goal, url, supervisors, skills, size, difficulty } = idea;
  const t = buildTranslate(translationsEN);

  useEffect(() => {
    document.title = title;  
  }, []);

  const renderers = {
    inlineMath: ({value}) => <Tex math={value} />,
    math: ({value}) => <Tex block math={value} />,
    code: ({language, value}) => {
      return <SyntaxHighlighter style={prism} language={language ? language.toLowerCase() : language} children={value} />
    }
  };

  return (
      <div className="container">
        <div className="idea-header">
          <h1 className="idea-title">{title}</h1>
          <img
            className="idea-img"
            src={img ? URLS.IMAGE_FOLDER + '/' + img : logo}
            alt={title}
          />
        </div>

        <h3>{t('context')}</h3>
        <p><ReactMarkdown plugins={[math,gfm]} renderers={renderers} children={description} /></p>

        <h3>{t('goal')}</h3>
        <p><ReactMarkdown plugins={[math,gfm]} renderers={renderers} children={goal} /></p>

        <table class="idea-table">
          <tbody>
            <tr>
              <td>{t('required')}</td>
              <td>{skills?.required.join(', ')}</td>
            </tr>
            <tr>
              <td>{t('preferred')}</td>
              <td>{skills?.preferred.join(', ')}</td>
            </tr>
            <tr>
              <td>{t('timeSize')}</td>
              <td>{size} <span aria-label="emoji">{projectSizeHours[size]}</span> </td>
            </tr>
            <tr>
              <td>{t('difficulty')}</td>
              <td>{t(difficulty)} <span role="img" aria-label="emoji">{diffcultyEmoji[difficulty]}</span></td>
            </tr>
          </tbody>
        </table>

        {/* <h3>{t('skills')}</h3>
        <p><i>{t('required')}:</i> {skills?.required}</p>
        <p><i>{t('preferred')}:</i> {skills?.preferred}</p>

        <h3>{t('timeSize')}</h3>
        <p>{size}</p>

        <h3>{t('difficulty')}</h3>
        <p>{t(difficulty)} <span role="img" aria-label="emoji">{diffcultyEmoji[difficulty]}</span></p> */}

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