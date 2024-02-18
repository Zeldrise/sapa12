import React, { Component, Fragment } from 'react'
import { Col, Container, Row, Card } from "react-bootstrap";
import { Link } from 'react-router-dom';
import Breadcrumb from "react-bootstrap/Breadcrumb";

class SubCategory extends Component {
  render() {
     const MyList = this.props.ProductData;
     const Category = this.props.Category;
     const SubCategory = this.props.SubCategory;
     const MyView = MyList.map((ProductList, i) => {
       if (ProductList.special_price == "na") {
         return (
           <Col className="p-1" xl={3} lg={3} md={6} sm={6} xs={6}>
             <Link
               className="text-link"
               to={"/productDetails/" + ProductList.id}
             >
               <Card className="image-box card w-100">
                 <img className="center w-75" src={ProductList.image} />
                 <Card.Body>
                   <p className="product-name-on-card">{ProductList.title}</p>
                   <p className="product-price-on-card">
                     Price : Rp{ProductList.price}
                   </p>
                 </Card.Body>
               </Card>
             </Link>
           </Col>
         );
       } else {
         return (
           <Col className="p-1" xl={3} lg={3} md={6} sm={6} xs={6}>
             <Link
               className="text-link"
               to={"/productDetails/" + ProductList.id}
             >
               <Card className="image-box card w-100">
                 <img className="center w-75" src={ProductList.image} />
                 <Card.Body>
                   <p className="product-name-on-card">{ProductList.title}</p>
                   <p className="product-price-on-card">
                     Price :{" "}
                     <strike className="text-muted">
                       Rp{ProductList.price}
                     </strike>{" "}
                     Rp{ProductList.special_price}
                   </p>
                 </Card.Body>
               </Card>
             </Link>
           </Col>
         );
       }
     });
    return (
      <Fragment>
        <Container className="text-center" fluid={true}>
          <div className="breadbody">
            <Breadcrumb>
              <Breadcrumb.Item>
                <Link to="/">Home</Link>
              </Breadcrumb.Item>
              <Breadcrumb.Item>
                <Link to={"/productcategory/" + Category}>{Category}</Link>
              </Breadcrumb.Item>
              <Breadcrumb.Item>
                <Link
                  to={"/productsubcategory/" + Category + "/" + SubCategory}
                >
                  {SubCategory}
                </Link>
              </Breadcrumb.Item>
            </Breadcrumb>
          </div>
          <div className="section-title text-center mb-40 mt-2">
            <h2>
              {Category} / {SubCategory}
            </h2>
          </div>
          <Row>{MyView}</Row>
        </Container>
      </Fragment>
    );
  }
}

export default SubCategory