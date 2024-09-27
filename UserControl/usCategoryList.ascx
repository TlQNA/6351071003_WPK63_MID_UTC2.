<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="usCategoryList.ascx.cs" Inherits="de1.UserControl.usCategoryList" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="EntityDataSource3">
    <ItemTemplate>
        <li>

            <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%# Eval("CatName") + "("+ Eval("Beverages.Count")+")" %>' NavigateUrl='<%# "~/Category.aspx?CatID=" + Eval("CatID")%>' ></asp:HyperLink>
       
        </li>
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Categories" Include="Beverages">
</asp:EntityDataSource>

