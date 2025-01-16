<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prog3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
