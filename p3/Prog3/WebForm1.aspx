<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prog3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Hero Section */
        .hero {
            position: relative;
            background: url('img/prg3-img.jpg') center/cover no-repeat;
            color: white;
            text-align: center;
            padding: 100px 20px;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(34, 31, 31, 0.7);
            z-index: 1;
        }

        .hero h2,
        .hero p {
            position: relative;
            z-index: 2;
        }

        .hero h2 {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 1.2rem;
        }

        /* Card Grid */
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 80px;
            padding: 40px 20px;
            max-width: 1200px;
            margin: auto;
        }

        .card {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card h3 {
            margin: 10px 0;
            font-size: 18px;
        }

        .card p {
            font-size: 14px;
            color: #555;
            margin: 10px 0 20px;
        }

        .card .btn {
            display: inline-block;
            padding: 10px 20px;
            color: white;
            background-color: #007bff;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
        }

        .card .btn:hover {
            background-color: #0056b3;
        }

        /* Media Queries */
        @media (max-width: 600px) {
            .hero h2 {
                font-size: 2rem;
            }

            .hero p {
                font-size: 1rem;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">       
    <!-- Hero Section -->
    <div class="hero">        
        <h2>Develop Experiences</h2>
        <p>UI frameworks and app development tools that 1.9 million developers love</p>
    </div>

    <!-- Card Grid -->
    <div class="card-container">
        <!-- Card 1 -->
        <div class="card">
            <h3>.NET</h3>
            <p>DevCraft - .NET UI controls, reporting, and developer productivity tools.</p>
            <a href="#" class="btn" style="background-color: #28a745;">Learn More</a>
        </div>

        <!-- Card 2 -->
        <div class="card">
            <h3>MOBILE</h3>
            <p>Telerik Platform - Cross-platform solution for building and deploying mobile apps.</p>
            <a href="#" class="btn">Learn More</a>
        </div>

        <!-- Card 3 -->
        <div class="card">
            <h3>HTML5</h3>
            <p>Kendo UI - JavaScript, HTML5 widgets for responsive web and data visualization.</p>
            <a href="#" class="btn" style="background-color: #dc3545;">Learn More</a>
        </div>

        <!-- Card 4 -->
        <div class="card">
            <h3>CMS</h3>
            <p>Progress Sitefinity - Web content management and analytics for digital experiences.</p>
            <a href="#" class="btn">Learn More</a>
        </div>

        <!-- Card 5 -->
        <div class="card">
            <h3>NATIVE MOBILE</h3>
            <p>NativeScript - Open-source framework for building native mobile apps.</p>
            <a href="#" class="btn">Learn More</a>
        </div>

        <!-- Card 6 -->
        <div class="card">
            <h3>TESTING</h3>
            <p>Test Studio - Intuitive and easy-to-use GUI test automation solution.</p>
            <a href="#" class="btn">Learn More</a>
        </div>
    </div>
</asp:Content>
