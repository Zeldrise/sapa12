import React, { Component, Fragment } from "react";
import { Container, Row, Col } from "react-bootstrap";
import ReactDOM from "react-dom";
import Breadcrumb from "react-bootstrap/Breadcrumb";
import { Link, Redirect } from "react-router-dom";
import "react-inner-image-zoom/lib/InnerImageZoom/styles.css";
import InnerImageZoom from "react-inner-image-zoom";
import SuggestedProduct from "./SuggestedProduct";
import ReviewList from "./ReviewList";
import cogoToast from "cogo-toast";
import AppURL from "../../api/AppURL";
import axios from "axios";

class ProductDetails extends Component {
  constructor() {
    super();
    this.state = {
      previewImg: "0",
      isVariant: null,
      isPackaging: null,
      variant: "",
      packaging: "",
      quantity: "",
      productCode: null,
      addToCart: "Add To Cart",
      PageRefreshStatus: false,
      addToFav: "Favourite",
      OrderNow: "Order Now",
      PageRedirectStauts: false,
    };
  }
  imgOnClick = (event) => {
    let imgSrc = event.target.getAttribute("src");
    this.setState({ previewImg: imgSrc });
  };
  addToCart = () => {
    let isVariant = this.state.isVariant;
    let isPackaging = this.state.isPackaging;
    let variant = this.state.variant;
    let packaging = this.state.packaging;
    let quantity = this.state.quantity;
    let productCode = this.state.productCode;
    let email = this.props.user.email;

    if (isVariant === "YES" && variant.length === 0) {
      cogoToast.error("Please Select Variant");
    } else if (isPackaging === "YES" && packaging.length === 0) {
      cogoToast.error("Please Select Packaging");
    } else if (quantity.length === 0) {
      cogoToast.error("Please Select Quantity");
    } else if (!localStorage.getItem("token")) {
      cogoToast.warn("Please Login First");
    } else {
      this.setState({ addToCart: "Adding..." });
      let MyFormData = new FormData();
      MyFormData.append("variant", variant);
      MyFormData.append("packaging", packaging);
      MyFormData.append("quantity", quantity);
      MyFormData.append("product_code", productCode);
      MyFormData.append("email", email);

      axios
        .post(AppURL.AddToCart, MyFormData)
        .then((response) => {
          if (response.data === 1) {
            cogoToast.success("Product Added Successfully");
            this.setState({ addToCart: "Add To Cart" });
            this.setState({ PageRefreshStatus: true });
          } else {
            cogoToast.error("Your request is not done! Try again");
            this.setState({ addToCart: "Add To Cart" });
          }
        })
        .catch((error) => {
          cogoToast.error("Your request is not done! Try again");
          this.setState({ addToCart: "Add To Cart" });
        });
    }
  };
  orderNow = () => {
    let isVariant = this.state.isVariant;
    let isPackaging = this.state.isPackaging;
    let variant = this.state.variant;
    let packaging = this.state.packaging;
    let quantity = this.state.quantity;
    let productCode = this.state.productCode;
    let email = this.props.user.email;

    if (isVariant === "YES" && variant.length === 0) {
      cogoToast.error("Please Select Variant");
    } else if (isPackaging === "YES" && packaging.length === 0) {
      cogoToast.error("Please Select Packaging");
    } else if (quantity.length === 0) {
      cogoToast.error("Please Select Quantity");
    } else if (!localStorage.getItem("token")) {
      cogoToast.warn("Please Login First");
    } else {
      this.setState({ addToCart: "Adding..." });
      let MyFormData = new FormData();
      MyFormData.append("variant", variant);
      MyFormData.append("packaging", packaging);
      MyFormData.append("quantity", quantity);
      MyFormData.append("product_code", productCode);
      MyFormData.append("email", email);

      axios
        .post(AppURL.AddToCart, MyFormData)
        .then((response) => {
          if (response.data === 1) {
            cogoToast.success("Product Added Successfully", {
              position: "top-right",
            });
            this.setState({ OrderNow: "Order Now" });
            this.setState({ PageRedirectStauts: true });
          } else {
            cogoToast.error("Your Request is not done ! Try Aagain", {
              position: "top-right",
            });
            this.setState({ addToCart: "Add To Cart" });
          }
        })
        .catch((error) => {
          cogoToast.error("Your Request is not done ! Try Aagain", {
            position: "top-right",
          });
          this.setState({ addToCart: "Add To Cart" });
        });
    }
  };
  PageRedirect = () => {
    if (this.state.PageRedirectStauts === true) {
      return <Redirect to="/cart" />;
    }
  };
  addToFav = () => {
    this.setState({ addToFav: "Adding..." });
    let productCode = this.state.productCode;
    let email = this.props.user.email;
    if (!localStorage.getItem("token")) {
      cogoToast.warn("Please Login First");
    } else {
      axios
        .get(AppURL.AddFavourite(productCode, email))
        .then((response) => {
          if (response.data === 1) {
            cogoToast.success("Product Is Now In Favourite");
            this.setState({ addToFav: "Favourite" });
          } else {
            cogoToast.error("Your request is not done! Try again");
            this.setState({ addToFav: "Favourite" });
          }
        })
        .catch((error) => {
          cogoToast.error("Your request is not done! Try again");
          this.setState({ addToCart: "Add To Cart" });
        });
    }
  };
  variantOnChange = (event) => {
    let variant = event.target.value;
    // alert(variant);
    this.setState({ variant: variant });
  };
  packagingOnChange = (event) => {
    let packaging = event.target.value;
    // alert(packaging);
    this.setState({ packaging: packaging });
  };
  quantityOnChange = (event) => {
    let quantity = event.target.value;
    // alert(quantity);
    this.setState({ quantity: quantity });
  };
  PageRefresh = () => {
    if (this.state.PageRefreshStatus === true) {
      let URL = window.location;
      return <Redirect to={URL} />;
    }
  };
  PriceOption(price, special_price) {
    if (special_price == "na") {
      return <p className="product-price-on-card">Price : Rp{price}</p>;
    } else {
      return (
        <p className="product-price-on-card">
          Price : <strike className="text-muted">Rp{price}</strike> Rp
          {special_price}
        </p>
      );
    }
  }
  render() {
    let ProductAllData = this.props.data;
    let title = ProductAllData["productlist"][0]["title"];
    let brand = ProductAllData["productlist"][0]["brand"];
    let category = ProductAllData["productlist"][0]["category"];
    let subcategory = ProductAllData["productlist"][0]["subcategory"];
    let image = ProductAllData["productlist"][0]["image"];

    if (this.state.previewImg === "0") {
      this.setState({ previewImg: image });
    }

    let product_code = ProductAllData["productlist"][0]["product_code"];
    let price = ProductAllData["productlist"][0]["price"];
    let remark = ProductAllData["productlist"][0]["remark"];
    let special_price = ProductAllData["productlist"][0]["special_price"];
    let star = ProductAllData["productlist"][0]["star"];

    let image_one = ProductAllData["productDetails"][0]["image_one"];
    let image_two = ProductAllData["productDetails"][0]["image_two"];
    let image_three = ProductAllData["productDetails"][0]["image_three"];
    let image_four = ProductAllData["productDetails"][0]["image_four"];
    let variant = ProductAllData["productDetails"][0]["variant"];
    let packaging = ProductAllData["productDetails"][0]["packaging"];
    let product_id = ProductAllData["productDetails"][0]["product_id"];
    let long_description =
      ProductAllData["productDetails"][0]["long_description"];
    let short_description =
      ProductAllData["productDetails"][0]["short_description"];

    var VariantDiv = "d-none";
    if (variant != "na") {
      let VariantArray = variant.split(",");
      var VariantOption = VariantArray.map((VariantList, i) => {
        return <option value={VariantList}> {VariantList} </option>;
      });
      VariantDiv = "";
    } else {
      VariantDiv = "d-none";
    }

    var PackagingDiv = "d-none";
    if (packaging != "na") {
      let PackagingArray = packaging.split(",");
      var PackagingOption = PackagingArray.map((PackagingList, i) => {
        return <option value={PackagingList}> {PackagingList} </option>;
      });
      PackagingDiv = "";
    } else {
      PackagingDiv = "d-none";
    }

    if (this.state.isVariant === null) {
      if (variant != "na") {
        this.setState({ isVariant: "YES" });
      } else {
        this.setState({ isVariant: "NO" });
      }
    }
    if (this.state.isPackaging === null) {
      if (packaging != "na") {
        this.setState({ isPackaging: "YES" });
      } else {
        this.setState({ isPackaging: "NO" });
      }
    }
    if (this.state.productCode === null) {
      this.setState({ productCode: product_code });
    }
    return (
      <Fragment>
        <Container className="BetweenTwoSection">
          <div className="breadbody">
            <Breadcrumb>
              <Breadcrumb.Item>
                <Link to="/">Home</Link>
              </Breadcrumb.Item>
              <Breadcrumb.Item>
                <Link to={"/productcategory/" + category}>{category}</Link>
              </Breadcrumb.Item>
              <Breadcrumb.Item>
                <Link
                  to={"/productsubcategory/" + category + "/" + subcategory}
                >
                  {subcategory}
                </Link>
              </Breadcrumb.Item>
              <Breadcrumb.Item>
                <Link to={"/productDetails/" + product_id}>{brand}</Link>
              </Breadcrumb.Item>
            </Breadcrumb>
          </div>
          <Row className="p-2">
            <Col
              className="shadow-sm bg-white pb-3 mt-4"
              md={12}
              lg={12}
              sm={12}
              xs={12}
            >
              <Row>
                <Col className="p-3" md={6} lg={6} sm={12} xs={12}>
                  <InnerImageZoom
                    className="detailimage"
                    zoomType={"hover"}
                    zoomScale={1.5}
                    src={this.state.previewImg}
                    zoomSrc={this.state.previewImg}
                  />
                  <Container className="my-3">
                    <Row>
                      <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                        <img
                          onClick={this.imgOnClick}
                          className=" smallimage product-sm-img"
                          src={image_one}
                        />
                      </Col>
                      <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                        <img
                          onClick={this.imgOnClick}
                          className=" smallimage product-sm-img"
                          src={image_two}
                        />
                      </Col>
                      <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                        <img
                          onClick={this.imgOnClick}
                          className=" smallimage product-sm-img"
                          src={image_three}
                        />
                      </Col>
                      <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                        <img
                          onClick={this.imgOnClick}
                          className=" smallimage product-sm-img"
                          src={image_four}
                        />
                      </Col>
                    </Row>
                  </Container>
                </Col>
                <Col className="p-3 " md={6} lg={6} sm={12} xs={12}>
                  <h5 className="Product-Name">{title}</h5>
                  <h6 className="section-sub-title">{short_description}</h6>
                  {this.PriceOption(price, special_price)}
                  <h6 className="mt-2">
                    Category : <b>{category}</b>
                  </h6>

                  <h6 className="mt-2">
                    SubCategory : <b>{subcategory}</b>
                  </h6>
                  <h6 className="mt-2">
                    Brand : <b>{brand}</b>
                  </h6>
                  <h6 className="mt-2">
                    Product Code : <b>{product_code}</b>
                  </h6>

                  <div className={VariantDiv}>
                    <h6 className="mt-2">Choose Variant</h6>
                    <select
                      onChange={this.variantOnChange}
                      className="form-control form-select"
                    >
                      <option>Choose Variant</option>
                      {VariantOption}
                    </select>
                  </div>
                  <div className={PackagingDiv}>
                    <h6 className="mt-2">Choose Packaging</h6>
                    <select
                      onChange={this.packagingOnChange}
                      className="form-control form-select"
                    >
                      <option>Choose Packaging</option>
                      {PackagingOption}
                    </select>
                  </div>
                  <div>
                    <h6 className="mt-2">Choose Quantity</h6>
                    <form>
                      <input
                        onChange={this.quantityOnChange}
                        className="form-control"
                        type="number"
                        min="1"
                      />
                    </form>
                  </div>

                  <div className="input-group mt-3">
                    <button
                      onClick={this.addToCart}
                      className="btn site-btn m-1 "
                    >
                      {" "}
                      <i className="fa fa-shopping-cart"></i>{" "}
                      {this.state.addToCart}
                    </button>
                    <button
                      onClick={this.orderNow}
                      className="btn btn-style m-1"
                    >
                      {" "}
                      <i className="fa fa-truck"></i> {this.state.OrderNow}
                    </button>
                    <button
                      onClick={this.addToFav}
                      className="btn btn-style m-1"
                    >
                      {" "}
                      <i className="fa fa-heart"></i> {this.state.addToFav}
                    </button>
                  </div>
                </Col>
              </Row>

              <Row>
                <Col className="" md={6} lg={6} sm={12} xs={12}>
                  <h6 className="mt-2">DETAILS</h6>
                  <p>{long_description}</p>
                </Col>

                <Col className="" md={6} lg={6} sm={12} xs={12}>
                  <ReviewList code={product_code} />
                </Col>
              </Row>
            </Col>
          </Row>
        </Container>
        <SuggestedProduct subcategory={subcategory} />
        {this.PageRefresh()}

        {this.PageRedirect()}
      </Fragment>
    );
  }
}

export default ProductDetails;
