<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="Exercise11.Articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Articles</h1>
    <p>
        <asp:Label ID="LblMsg" runat="server"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GvArticles" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ArticleId" >
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ArticleId" HeaderText="ArticleId" ReadOnly="True" SortExpression="ArticleId" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
                <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContentDBConnectionString %>" ProviderName="<%$ ConnectionStrings:ContentDBConnectionString.ProviderName %>" SelectCommand="SELECT [ArticleId], [Title], [Content], [PublishDate] FROM [Articles]"></asp:SqlDataSource>
    </p>
</asp:Content>
