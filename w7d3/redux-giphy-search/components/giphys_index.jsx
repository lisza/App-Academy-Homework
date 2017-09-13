import React from 'react';
import GiphysIndexItem from './giphys_index_item';

const GiphysIndex = ({ giphys }) => {
  return(
    <ul>
      { giphys.map(giphy => (
        <li>
          <img src={ giphy.images.fixed_height.url } />
        </li>
      )) }
    </ul>
  );
}

export default GiphysIndex;
