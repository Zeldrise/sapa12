import React, { Component, Fragment } from "react";
import { Col, Container, Row, Card } from "react-bootstrap";
import axios from "axios";
import AppURL from "../../api/AppURL";
import { Link } from "react-router-dom";
import CategoryLoading from "../PlaceHolder/CategoryLoading";

class Categories extends Component {
  constructor() {
    super();
    this.state = {
      MenuData: [],
      isLoading: "",
      mainDiv: "d-none",
    };
  }
  componentDidMount() {
    axios
      .get(AppURL.AllCategoryDetails)
      .then((response) => {
        this.setState({
          MenuData: response.data,
          isLoading: "d-none",
          mainDiv: "",
        });
      })
      .catch((error) => {});
  }
  render() {
    const CatList = this.state.MenuData; 
    const MyView = CatList.map((CatList, i) => {
      return (
        <Col
          key={i.toString()}
          className="mx-auto p-0"
          // key={1}
          xl={3}
          lg={3}
          md={3}
          sm={6}
          xs={6}
        >
          <Link
            className="text-link"
            to={"/productcategory/" + CatList.category_name}
          >
            <Card className="h-100 w-100 text-center">
              <Card.Body>
                <img className="center" src={CatList.category_image} />
                <h5 className="category-name">{CatList.category_name}</h5>
              </Card.Body>
            </Card>
          </Link>
        </Col>
      );
    });
    return (
      <Fragment>
        <CategoryLoading isLoading={this.state.isLoading} />
        <div className={this.state.mainDiv}>
          <Container className="text-center">
            <div className="section-title text-center mb-55">
              <h2>CATEGORY</h2>
            </div>
            <Row>{MyView}</Row>
          </Container>
        </div>
      </Fragment>
    );
  }
}

export default Categories;
