import React from 'react';

const Language = (props) => {
  return (
    <div className='language-item'>
        <div className='language-name'>{props.name}</div>
        <img 
            className='language-image'
            src={props.image}
        />
    </div>
  )
}

export default Language