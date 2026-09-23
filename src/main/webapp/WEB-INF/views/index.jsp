<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<%@ include file="./base.jsp"%>

<meta charset="UTF-8">

<title>Gun Armory</title>


<style>

/* =========================================================
   BACKGROUND IMAGE
   ========================================================= */

.bg-image{
    position:fixed;
    top:0;
    left:0;
    width:100%;
    height:100%;

    background-image:url("<c:url value='/images/rifle-bg.jpg'/>");
    background-size:cover;
    background-position:center;

    filter:blur(3px);

    z-index:-2;
}


/* =========================================================
   DARK OVERLAY
   ========================================================= */

.bg-overlay{
    position:fixed;
    top:0;
    left:0;
    width:100%;
    height:100%;

    background:rgba(0,0,0,0.5);

    z-index:-1;
}


/* =========================================================
   MAIN CONTENT BOX
   ========================================================= */

.content-box{
    width:calc(100% - 30px);
    max-width:1400px;

    margin:30px auto;

    padding:35px;

    border-radius:12px;

    background:rgba(0,0,0,0.35);

    backdrop-filter:blur(4px);

    box-shadow:0px 6px 25px rgba(0,0,0,0.5);
}


/* =========================================================
   PAGE HEADING
   ========================================================= */

.page-heading{
    color:white;
    font-weight:bold;

    margin-bottom:30px !important;
}


/* =========================================================
   SEARCH BOX
   ========================================================= */

.search-box{
    width:100%;
    max-width:1100px;

    margin:0 auto 30px auto;
}


/* Search form */

.search-box form{
    width:100%;
}


/* Search input */

.search-input{
    height:48px;

    border-radius:25px;

    padding:0 20px;

    border:none;

    outline:none;

    box-shadow:0px 3px 10px rgba(0,0,0,0.3);

    font-size:16px;
}


/* Search input focus */

.search-input:focus{
    box-shadow:
        0px 0px 0px 2px rgba(255,255,255,0.5),
        0px 4px 12px rgba(0,0,0,0.4);
}


/* Search button */

.search-btn{
    height:48px;

    min-width:120px;

    border-radius:25px;

    padding:0 22px;

    margin-left:12px;

    background:white;

    color:black;

    border:2px solid white;

    font-weight:bold;

    display:flex;

    align-items:center;

    justify-content:center;

    gap:8px;

    white-space:nowrap;

    transition:all 0.3s ease;
}


/* Search button hover */

.search-btn:hover{
    background:#e6e6e6;

    color:black;

    border-color:#e6e6e6;

    transform:translateY(-2px);

    box-shadow:0px 5px 15px rgba(255,255,255,0.3);
}


/* Search icon */

.search-btn i{
    font-size:16px;
}


/* =========================================================
   TABLE CONTAINER
   ========================================================= */

.table-container{
    width:100%;

    max-width:1150px;

    margin:15px auto 0 auto;

    overflow-x:auto;

    border-radius:10px;
}


/* =========================================================
   INVENTORY TABLE
   ========================================================= */

.inventory-table{

    width:100%;

    min-width:850px;

    margin:0 auto;

    color:white;

    border-collapse:collapse;

    table-layout:fixed;

    background:rgba(255,255,255,0.05);
}


/* =========================================================
   TABLE HEADER
   ========================================================= */

.inventory-table thead{
    background:rgba(0,0,0,0.75);
}


.inventory-table th{

    padding:16px 18px;

    font-weight:bold;

    font-size:16px;

    letter-spacing:0.3px;

    text-align:center;

    vertical-align:middle;

    border:1px solid rgba(255,255,255,0.25);
}


/* =========================================================
   TABLE BODY
   ========================================================= */

.inventory-table td{

    padding:16px 18px;

    text-align:center;

    vertical-align:middle;

    border:1px solid rgba(255,255,255,0.25);

    font-size:15px;
}


/* Table rows */

.inventory-table tbody tr{

    background:rgba(255,255,255,0.08);

    transition:all 0.2s ease;
}


/* Table row hover */

.inventory-table tbody tr:hover{

    background:rgba(255,255,255,0.14);

}


/* =========================================================
   COLUMN WIDTHS
   ========================================================= */

/* Gun ID */

.inventory-table th:nth-child(1),
.inventory-table td:nth-child(1){

    width:13%;

}


/* Gun Name */

.inventory-table th:nth-child(2),
.inventory-table td:nth-child(2){

    width:18%;

}


/* Description */

.inventory-table th:nth-child(3),
.inventory-table td:nth-child(3){

    width:39%;

}


/* Price */

.inventory-table th:nth-child(4),
.inventory-table td:nth-child(4){

    width:16%;

}


/* Action */

.inventory-table th:nth-child(5),
.inventory-table td:nth-child(5){

    width:14%;

}


/* =========================================================
   DESCRIPTION CELL
   ========================================================= */

.description-cell{

    line-height:1.5;

    word-wrap:break-word;

    overflow-wrap:break-word;

}


/* =========================================================
   PRICE CELL
   ========================================================= */

.price-cell{

    font-weight:bold;

    white-space:nowrap;

}


/* =========================================================
   ACTION CELL
   ========================================================= */

.action-cell{

    white-space:nowrap;

}


/* =========================================================
   DELETE ICON
   ========================================================= */

.delete-icon{

    color:white;

    font-size:18px;

    margin-right:15px;

    transition:all 0.2s ease;
}


/* Delete hover */

.delete-icon:hover{

    color:red;

    transform:scale(1.15);

}


/* =========================================================
   UPDATE ICON
   ========================================================= */

.update-icon{

    color:yellow;

    font-size:18px;

    transition:all 0.2s ease;
}


/* Update hover */

.update-icon:hover{

    color:gold;

    transform:scale(1.15);

}


/* =========================================================
   SEARCH MESSAGE
   ========================================================= */

.search-message{

    color:#ff6b6b;

    font-weight:bold;

    font-size:18px;

    text-align:center;

    padding:15px;
}


/* =========================================================
   ADD GUN BUTTON
   ========================================================= */

.add-btn{

    padding:10px 25px;

    font-weight:bold;

    border-radius:30px;

    transition:all 0.3s;

}


/* Add button hover */

.add-btn:hover{

    transform:translateY(-2px);

    box-shadow:0px 5px 15px rgba(0,255,0,0.5);

}


/* =========================================================
   RESPONSIVE - TABLET
   ========================================================= */

@media (max-width:768px){

    .content-box{

        width:calc(100% - 20px);

        padding:25px 15px;

        margin:20px auto;

    }


    .page-heading{

        font-size:32px;

        margin-bottom:25px !important;

    }


    .search-box{

        margin-bottom:25px;

    }


    .table-container{

        width:100%;

        overflow-x:auto;

        margin-top:10px;

    }


    .inventory-table{

        min-width:850px;

    }


    .inventory-table th,
    .inventory-table td{

        padding:14px 12px;

    }

}


/* =========================================================
   RESPONSIVE - MOBILE
   ========================================================= */

@media (max-width:480px){

    .content-box{

        width:calc(100% - 16px);

        padding:20px 10px;

        margin:15px auto;

    }


    .page-heading{

        font-size:26px;

        line-height:1.3;

        margin-bottom:25px !important;

    }


    /* Search becomes vertical */

    .search-box form{

        flex-direction:column;

        width:100%;

        gap:10px;

    }


    .search-input{

        width:100%;

        height:46px;

    }


    .search-btn{

        width:100%;

        height:46px;

        margin-left:0;

    }


    /* Table remains readable through horizontal scrolling */

    .table-container{

        width:100%;

        overflow-x:auto;

        margin-top:10px;

    }


    .inventory-table{

        min-width:850px;

    }


    /* Add button */

    .add-btn{

        padding:10px 22px;

    }

}

</style>

</head>


<body>


<!-- =========================================================
     BACKGROUND
     ========================================================= -->

<div class="bg-image"></div>

<div class="bg-overlay"></div>


<!-- =========================================================
     MAIN CONTENT
     ========================================================= -->

<div class="container-fluid">

    <div class="content-box">


        <!-- =================================================
             HEADING
             ================================================= -->

        <div class="row justify-content-center">

            <div class="col-12 text-center">

                <h1 class="page-heading">
                    Welcome to Inventory Page
                </h1>

            </div>

        </div>


        <!-- =================================================
             SEARCH BAR
             ================================================= -->

        <div class="search-box">

            <form action="${pageContext.request.contextPath}/search-product"
                  method="get"
                  class="d-flex align-items-center">

                <input type="text"
                       name="search"
                       class="form-control search-input"
                       placeholder="Search by Gun ID or Gun Name"
                       required>


                <button type="submit" class="search-btn">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <span>Search</span>

                </button>

            </form>

        </div>


        <!-- =================================================
             TABLE
             ================================================= -->

        <div class="row justify-content-center">

            <div class="col-12">

                <div class="table-container">

                    <table class="inventory-table">


                        <!-- ==============================
                             TABLE HEADER
                             ============================== -->

                        <thead>

                            <tr>

                                <th scope="col">
                                    Gun_ID
                                </th>

                                <th scope="col">
                                    Gun_NAME
                                </th>

                                <th scope="col">
                                    Gun_DESCRIPTION
                                </th>

                                <th scope="col">
                                    Gun_PRICE
                                </th>

                                <th scope="col">
                                    Action
                                </th>

                            </tr>

                        </thead>


                        <!-- ==============================
                             TABLE BODY
                             ============================== -->

                        <tbody>


                        <!-- =================================================
                             CASE 1:
                             SEARCH PERFORMED + PRODUCT FOUND
                             ================================================= -->

                        <c:if test="${searchProduct != null}">

                            <tr>

                                <th scope="row">

                                    RIFLE#${searchProduct.id}

                                </th>


                                <td>

                                    ${searchProduct.name}

                                </td>


                                <td class="description-cell">

                                    ${searchProduct.description}

                                </td>


                                <td class="price-cell">

                                    &#x20B9;${searchProduct.price}

                                </td>


                                <td class="action-cell">

                                    <a href="${pageContext.request.contextPath}/delete-product/${searchProduct.id}">

                                        <i class="fa-solid fa-trash-can delete-icon"></i>

                                    </a>


                                    <a href="${pageContext.request.contextPath}/show-update-form/${searchProduct.id}">

                                        <i class="fa-solid fa-pen-nib update-icon"></i>

                                    </a>

                                </td>

                            </tr>

                        </c:if>


                        <!-- =================================================
                             CASE 2:
                             SEARCH PERFORMED + PRODUCT NOT FOUND
                             ================================================= -->

                        <c:if test="${searchProduct == null && param.search != null}">

                            <tr>

                                <td colspan="5">

                                    <div class="search-message">

                                        Product is not available

                                    </div>

                                </td>

                            </tr>

                        </c:if>


                        <!-- =================================================
                             CASE 3:
                             NORMAL PAGE LOAD
                             ================================================= -->

                        <c:if test="${searchProduct == null && param.search == null}">

                            <c:forEach items="${products}" var="p">

                                <tr>


                                    <!-- Gun ID -->

                                    <th scope="row">

                                        RIFLE#${p.id}

                                    </th>


                                    <!-- Gun Name -->

                                    <td>

                                        ${p.name}

                                    </td>


                                    <!-- Description -->

                                    <td class="description-cell">

                                        ${p.description}

                                    </td>


                                    <!-- Price -->

                                    <td class="price-cell">

                                        &#x20B9;${p.price}

                                    </td>


                                    <!-- Actions -->

                                    <td class="action-cell">

                                        <a href="${pageContext.request.contextPath}/delete-product/${p.id}">

                                            <i class="fa-solid fa-trash-can delete-icon"></i>

                                        </a>


                                        <a href="${pageContext.request.contextPath}/show-update-form/${p.id}">

                                            <i class="fa-solid fa-pen-nib update-icon"></i>

                                        </a>

                                    </td>


                                </tr>

                            </c:forEach>

                        </c:if>


                        </tbody>

                    </table>

                </div>

            </div>

        </div>


        <!-- =================================================
             ADD GUN BUTTON
             ================================================= -->

        <div class="row justify-content-center mt-4">

            <div class="col-12 text-center">

                <a href="${pageContext.request.contextPath}/show-add-form"
                   class="btn btn-success add-btn">

                    <i class="fa-solid fa-plus"></i>

                    Add Gun

                </a>

            </div>

        </div>


    </div>

</div>
</body>
</html>