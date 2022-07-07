import React from 'react';
import { useState } from 'react';

// const Lesson = (props) => {
//   return (
//     <div className='main-wrapper'>
//         <div className='lesson-card'>
//             <div className='lesson-item'>
//                 <p>{props.name}</p>
//                 <img src={props.image} alt="" />
//             </div>
//         </div>
//     </div>
//   );
// }

// export default Lesson

// 3-5
// const Lesson = (props) => {
    
//     return (
//       <div className='main-wrapper'>
//           <div className='lesson-card'>
//               <div className='lesson-item'>
//                   <p>{props.name}</p>
//                   <img src={props.image} alt="" />
//               </div>
//               <div className='modal'>
//                 <div className='modal-inner'>
//                     <div className='modal-header'></div>
//                     <div className='modal-introduction'>
//                         <h2>{props.name}</h2>
//                         <p>{props.introduction}</p>
//                     </div>
//                     <button className='modal-close-btn'>
//                         とじる
//                     </button>
//                 </div>
//               </div>
//           </div>
//       </div>
//     );
//   }
  
//   export default Lesson


// 3-6, 3-7, 3-8 ステートを使って表示、非表示を使い分ける
const Lesson = (props) => {
    let modal
    const [isModalOpen, setIsModalOpen] = useState(false);

    const handleClickLesson = () => {
        setIsModalOpen(true);
    }

    const handleClickClose = () => {
        setIsModalOpen(false);
    }

    if(isModalOpen){
        modal = (
            <div className='modal'>
                <div className='modal-inner'>
                    <div className='modal-header'></div>
                    <div className='modal-introduction'>
                        <h2>{props.name}</h2>
                        <p>{props.introduction}</p>
                    </div>
                    <button 
                        className='modal-close-btn'
                        onClick={()=>{handleClickClose()}}
                    >
                        とじる
                    </button>
                </div>
            </div>
        )
    }
    return (
      <div className='main-wrapper'>
          <div className='lesson-card'>
              <div 
                className='lesson-item'
                onClick={()=>{handleClickLesson()}}
              >
                  <p>{props.name}</p>
                  <img src={props.image} alt="" />
              </div>
              {modal}
          </div>
      </div>
    );
  }
  
  export default Lesson

