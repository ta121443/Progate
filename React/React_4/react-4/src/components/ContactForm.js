import React from 'react'
import { useState } from 'react'

// const ContactForm = () => {
//     let contactForm;
//     const [isSubmitted, setIsSubmitted] = useState(false);
//     const [email, setEmail] = useState('');
//     const handleSubmit = () =>{
//         setIsSubmitted(true);
//     }

//     if(isSubmitted){
//         contactForm = (
//             <div className='contact-submit-message'>
//                 送信完了
//             </div>
//         )
//     } else {
//         contactForm = (
//             <form onSubmit={()=>{handleSubmit()}}>
//                 <p>メールアドレス（必須）</p>
//                 <input value={email}/>
//                 <p>お問い合わせ内容（必須）</p>
//                 <textarea />
//                 <input
//                     type='submit'
//                     value='送信'
//                 />
//             </form>
//         )
//     }

//     return (
//         <div className='contact-form'>
//             {contactForm}
//         </div>
//     )
// }

// export default ContactForm


// 4-6, 4-7
// const ContactForm = () => {
//     let contactForm;
//     const [isSubmitted, setIsSubmitted] = useState(false);
//     const [email, setEmail] = useState('');
    
//     const handleSubmit = () =>{
//         setIsSubmitted(true);
//     }

//     const handleEmailChange = (event) => {
//         const inputValue = event.target.value;
//         setEmail(inputValue);
//     }

//     if(isSubmitted){
//         contactForm = (
//             <div className='contact-submit-message'>
//                 送信完了
//             </div>
//         )
//     } else {
//         contactForm = (
//             <form onSubmit={()=>{handleSubmit()}}>
//                 <p>メールアドレス（必須）</p>
//                 <input 
//                     value={email}
//                     onChange={(event) => {handleEmailChange(event)}}    
//                 />
//                 <p>お問い合わせ内容（必須）</p>
//                 <textarea />
//                 <input
//                     type='submit'
//                     value='送信'
//                 />
//             </form>
//         )
//     }

//     return (
//         <div className='contact-form'>
//             {contactForm}
//         </div>
//     )
// }

// export default ContactForm


// 4-8, 4-9, エラーメッセージ
// const ContactForm = () => {

//     const [isSubmitted, setIsSubmitted] = useState(false);
//     const [email, setEmail] = useState('');
//     const [hasEmailError, setHasEmailError] = useState(false);

//     let contactForm;
//     let emailErrorText;    
    
//     const handleSubmit = () =>{
//         setIsSubmitted(true);
//     }

//     const handleEmailChange = (event) => {
//         const inputValue = event.target.value;
//         const isEmpty = inputValue === '';
//         setEmail(inputValue);
//         setHasEmailError(isEmpty);
//     }

//     if(hasEmailError){
//         emailErrorText = (
//             <p className='contact-message-error'>
//                  メールアドレスを入力してください
//             </p>
//         )
//     }

//     if(isSubmitted){
//         contactForm = (
//             <div className='contact-submit-message'>
//                 送信完了
//             </div>
//         )
//     } else {
//         contactForm = (
//             <form onSubmit={()=>{handleSubmit()}}>
//                 <p>メールアドレス（必須）</p>
//                 <input 
//                     value={email}
//                     onChange={(event) => {handleEmailChange(event)}}    
//                 />
//                 {emailErrorText}
//                 <p>お問い合わせ内容（必須）</p>
//                 <textarea />
//                 <input
//                     type='submit'
//                     value='送信'
//                 />
//             </form>
//         )
//     }

//     return (
//         <div className='contact-form'>
//             {contactForm}
//         </div>
//     )
// }

// export default ContactForm;


// 4-10 お問い合わせ内容のstate管理
const ContactForm = () => {

    const [isSubmitted, setIsSubmitted] = useState(false);
    const [email, setEmail] = useState('');
    const [hasEmailError, setHasEmailError] = useState(false);
    const [content, setContent] = useState('');
    const [hasContentError, setHasContentError] = useState(false);

    let contactForm;
    let emailErrorText;    
    let contentErrorText;
    
    const handleSubmit = () =>{
        setIsSubmitted(true);
    }

    const handleEmailChange = (event) => {
        const inputValue = event.target.value;
        const isEmpty = inputValue === '';
        setEmail(inputValue);
        setHasEmailError(isEmpty);
    }

    const handleContentChange = (event) => {
        let inputValue = event.target.value;
        let isEmpty = inputValue === '';
        setContent(inputValue);
        setHasContentError(isEmpty);
    }

    if(hasEmailError){
        emailErrorText = (
            <p className='contact-message-error'>
                 メールアドレスを入力してください
            </p>
        )
    }

    if(hasContentError){
        contentErrorText = (
            <p className='contact-message-error'>
                お問い合わせ内容を入力してください
            </p>
        )
    }

    if(isSubmitted){
        contactForm = (
            <div className='contact-submit-message'>
                送信完了
            </div>
        )
    } else {
        contactForm = (
            <form onSubmit={()=>{handleSubmit()}}>
                <p>メールアドレス（必須）</p>
                <input 
                    value={email}
                    onChange={(event) => {handleEmailChange(event)}}    
                />
                {emailErrorText}
                <p>お問い合わせ内容（必須）</p>
                <textarea 
                    value={content}
                    onChange={(event) => {handleContentChange(event)}}
                />
                {contentErrorText}
                <input
                    type='submit'
                    value='送信'
                />
            </form>
        )
    }

    return (
        <div className='contact-form'>
            {contactForm}
        </div>
    )
}

export default ContactForm;