import './App.css';
import Language from './components/Language';

function App() {

  const languageList = [
    {
      name: 'HTML & CSS',
      image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/html.svg'
    },
    {
      name: 'JavaScript',
      image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/es6.svg'
    },
    {
      name: 'React',
      image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/react.svg'
    },
    {
      name: 'Ruby',
      image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/ruby.svg'
    },
    {
      name: 'Ruby on Rails',
      image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/rails.svg'
    },
    {
      name: 'Python',
      image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/python.svg'
    }
  ];
  return (
    <div className="App">
      <h1>言語一覧</h1>
      <div className='language'>
        {languageList.map((languageItem) => {
          return(
            <Language 
            name = {languageItem.name}
            image = {languageItem.image}
            />
          );
        })}
      </div>
    </div>
  );
}

export default App;
