import './App.css'
import EventComponent  from './components/EventComponent'
import LoginComponent from './components/LoginComponent'
import UseEffectComponent from './components/UseEffectComponent'
import Counter from './components/Counter'
import PropDril from './components/propDril'
import UseMemo from './components/UseMemo'
import { ThemeProvider } from './context/ThemeContext';
import ThemeDisplay from './components/ThemeDisplay';
import ThemeToggle from './components/ThemeToggle';
import UseReducerComponent from './components/UseReducerComponent';
import NavBar from './components/NavBar';
import Home from './components/Home';
function App() {
  return (
    // <ThemeProvider>
    //   <div>
    //     <h1>useContext Example</h1>
    //       {/* <UseMemo/>
    //      <PropDril/>
    //    <Counter />
    //    <LoginComponent />
    //    <UseEffectComponent/>  */}
    //     <ThemeDisplay />
    //     <ThemeToggle />
    //   </div>
    // </ThemeProvider>
    // <div>
    //   <UseReducerComponent />
    // </div>
    <div>
      {console.log("App component rendered")}
      <NavBar />
      <Home />
    </div>




  );
}

export default App;