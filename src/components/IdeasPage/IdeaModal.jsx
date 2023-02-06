import { Dialog } from "@material-ui/core"
import React from "react"
import * as URLS from '../../constants/urls'
import logo from '../../img/logo-big.png'

export default function IdeaModal({ open, onClose, idea, translations }) {

  if (!idea) return null

  const { title, description, img, goal, url, supervisors, skills, size, difficulty } = idea
  const t = buildTranslate(translations)

  return (
    <Dialog
      scroll="paper"
      maxWidth="md"
      open={open}
      onClose={onClose}
      aria-labelledby={title}
      aria-describedby={description + goal}
    >
      <div className="modal">
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
        {supervisors?.map((mentor, i) => <p key={i}>{mentor}</p>)}

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
    </Dialog>
  )
}

function buildTranslate(translations) {
  return (key) => translations[key] || `Missing translation for ${key}`
}

export const diffcultyEmoji = {
  'Easy': '😊',
  'Medium': '😉',
  'Hard': '🙃',
}