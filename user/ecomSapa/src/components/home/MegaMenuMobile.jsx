import axios from 'axios';
import React, { Component, Fragment } from 'react'
import AppURL from '../../api/AppURL';
import { Link } from "react-router-dom";

class MegaMenuMobile extends Component {
  constructor(props) {
    super();
    this.state = {
      MenuData: [],
    };
  }
  componentDidMount() {
    axios
      .get(AppURL.AllCategoryDetails)
      .then((response) => {
        this.setState({ MenuData: response.data });
      })
      .catch((error) => {});
  }
  MenuItemClick = (event) => {
    event.target.classList.toggle("active");
    var panel = event.target.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    }
  };
  render() {
   const CatList = this.state.MenuData;
   const MyView = CatList.map((CatList, i) => {
     return (
       <div key={i.toString()}>
         <button onClick={this.MenuItemClick} className="accordion">
           <img className="accordionMenuIcon" src={CatList.category_image} />
           &nbsp; {CatList.category_name}
         </button>
         <div className="panel">
           <ul>
             {CatList.subcategory_name.map((SubList, i) => {
               return (
                 <li>
                   <Link
                     to={
                       "/productsubcategory/" +
                       CatList.category_name +
                       "/" +
                       SubList.subcategory_name
                     }
                     className="accordionItem"
                   >
                     {SubList.subcategory_name}
                   </Link>
                 </li>
               );
             })}
           </ul>
         </div>
       </div>
     );
   });
    return (
      <div className="accordionMenuDivMobile">
        <div className="accordionMenuDivInsideMobile">{MyView}</div>
      </div>
    );
  }
}

export default MegaMenuMobile