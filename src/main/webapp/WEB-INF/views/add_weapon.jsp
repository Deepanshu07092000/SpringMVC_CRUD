<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="./base.jsp"%>

<meta charset="UTF-8">
<title>Add Weapon</title>

<style>

/* Background image */
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

/* overlay */
.bg-overlay{
    position:fixed;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(0,0,0,0.5);
    z-index:-1;
}

/* glass container */
.form-box{
    padding:35px;
    border-radius:12px;
    background:rgba(0,0,0,0.35);
    backdrop-filter: blur(4px);
    box-shadow:0px 6px 25px rgba(0,0,0,0.5);
}

/* heading */
.page-heading{
    color:white;
    font-weight:bold;
}

/* form labels */
.form-group label{
    color:white;
    font-weight:bold;
}

/* input styling */
.form-control{
    background:rgba(255,255,255,0.1);
    border:1px solid rgba(255,255,255,0.2);
    color:white;
}

.form-control:focus{
    background:rgba(255,255,255,0.15);
    color:white;
}

/* buttons */
.custom-btn{
    padding:10px 25px;
    font-weight:bold;
    border-radius:30px;
    transition:all 0.3s;
}

/* add button hover */
.add-btn:hover{
    transform:translateY(-2px);
    box-shadow:0px 5px 15px rgba(0,255,0,0.5);
}

/* back button hover */
.back-btn:hover{
    transform:translateY(-2px);
    box-shadow:0px 5px 15px rgba(255,0,0,0.4);
}

/* space between buttons */
.btn-space{
    margin-right:15px;
}

</style>

</head>

<body>

<div class="bg-image"></div>
<div class="bg-overlay"></div>

<div class="container vh-100 d-flex align-items-center justify-content-center">

    <div class="col-md-6">

        <div class="form-box">

            <h1 class="text-center mb-4 page-heading">Add New Weapon</h1>

            <form action="${pageContext.request.contextPath}/save-product" method="post">

                <div class="form-group mb-3">
                    <label>Gun Name</label>
                    <input type="text" name="name" class="form-control" required>
                </div>

                <div class="form-group mb-3">
                    <label>Gun Description</label>
                    <textarea name="description" class="form-control" rows="3" required></textarea>
                </div>

                <div class="form-group mb-3">
                    <label>Gun Price</label>
                    <input type="number" step="0.01" name="price" class="form-control" required>
                </div>

                <div class="text-center mt-4">

                    <button type="submit" class="btn btn-success custom-btn add-btn btn-space">
                        <i class="fa-solid fa-plus"></i> ADD
                    </button>

                    <a href="${pageContext.request.contextPath}/">
                        <button type="button" class="btn btn-danger custom-btn back-btn">
                            <i class="fa-solid fa-arrow-left"></i> BACK
                        </button>
                    </a>

                </div>

            </form>

        </div>

    </div>

</div>

</body>
</html>