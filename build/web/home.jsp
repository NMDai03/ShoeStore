
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shoes store</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>
        <!-- Header-->
        <header class="bg-white row">
            <div class="col-md-1"></div>
            <div class="col-md-3 my-5">
                <div class="">
                    <div class="text-center text-w
                         hite">
                        <h1 class="display-4 fw-bolder" style="color: black">Cửa hàng Giày</h1>
                        
                    </div>

                </div>

            </div>
            <div class="col-md-8 text-center">
                <img src="https://cdn3.dhht.vn/wp-content/uploads/2021/04/10-shop-giay-sneaker-nam-nu-chinh-hang-uy-tin-nhat-hien-nay.jpg" style="width: 70%" alt="alt"/>
            </div>
        </header>
        <!-- Section-->
        <section class="">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                    
                    <div class="col-md-9">
                        <h3>List Products</h3>
                        <c:choose>
                            <c:when test="${listProducts==null || listProducts.size()==0}">
                                Not founds
                            </c:when> 
                        </c:choose>

                        <div
                            class="row gx-4 row-cols-md-3 justify-content-center"
                            >
                            <c:forEach items="${listProducts}" var="P">
                                <div class="col mb-5">
                                    ${P.id}
                                    <div class="card h-100">
                                        
                                        <!-- Product image-->
                                        <a href="detail?productId=${P.id}">
                                            <img
                                                class="card-img-top"
                                                src="${P.imageUrl}"
                                                alt="..."
                                                />
                                        </a>
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">${P.name}</h5>
                                                <!-- Product reviews-->
                                                <div
                                                    class="d-flex justify-content-center mb-2"
                                                    >
                                                    ${P.tiltle}

                                                </div>
                                                <!-- Product price-->
                                                $${P.price}
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center">
                                                <a class="btn mt-auto" href="add-to-cart?productId=${P.id}"
                                                   >Add to cart</a
                                                >
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-md-3 mb-5">
                        <h3>List Categories</h3>
                        <ul class="list-group">
                            <c:forEach items="${listCategories}" var="C">
                                <li class="list-group-item"><a href="category?categoryId=${C.cid}" style="text-decoration: none">${C.cname}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>
