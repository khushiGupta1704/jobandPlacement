<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">

    protected void Application_Start()
        {
            RegisterRoutes(RouteTable.Routes);
        }
    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
    }

 
    void RegisterRoutes(RouteCollection routes)
    {
        //Category-------------------------------------------------------------------------------------------------//
        //routes.MapPageRoute("id1", "Academics", "~/academic.aspx");
        //routes.MapPageRoute("id9", "AcademicsList-{name}-{id}", "~/academylist.aspx");

        routes.MapPageRoute("id1", "Home", "~/index.aspx");
        routes.MapPageRoute("id2", "AboutUs", "~/aboutus.aspx");
        routes.MapPageRoute("id3", "Login", "~/login.aspx");
        routes.MapPageRoute("id14", "Register", "~/register.aspx");
        routes.MapPageRoute("id21", "Industry-Register", "~/industryRegister.aspx");
        routes.MapPageRoute("id34", "Industry", "~/industries.aspx");
        routes.MapPageRoute("id5", "Team", "~/ourTeam.aspx");
        routes.MapPageRoute("id6", "Interview-Questions", "~/interview_questions.aspx");
        routes.MapPageRoute("id7", "Jobs", "~/jobPage.aspx");
        routes.MapPageRoute("id8", "Blogs", "~/blogPage.aspx");
        routes.MapPageRoute("id9", "Contact-us", "~/contactUs.aspx");
        routes.MapPageRoute("id10", "Faqs", "~/faq.aspx");
        routes.MapPageRoute("id11", "Image-Gallery", "~/gallery.aspx");
        routes.MapPageRoute("id12", "Profile", "~/profile.aspx");
        routes.MapPageRoute("id13", "Services", "~/service.aspx");
        routes.MapPageRoute("id15", "BlogDetail/{id}", "~/blogDetail.aspx");
        routes.MapPageRoute("id16", "JobDetail/{id}", "~/jobDetail.aspx");
        routes.MapPageRoute("id17", "Questions/{id}", "~/questions.aspx");
        routes.MapPageRoute("id18", "Profile", "~/profile.aspx");
        routes.MapPageRoute("id19", "Applied-Jobs", "~/userJobs.aspx");
        routes.MapPageRoute("id20", "Forget-Password", "~/forgetPassword.aspx");
        routes.MapPageRoute("id22", "TermsAndConditions", "~/termsAndCondition.aspx");
        //routes.MapPageRoute("idpl31", "ProductList/{pid}/{name}", "~/products.aspx");
        //routes.MapPageRoute("idpd32", "ProDetails/{id}", "~/productDetails.aspx");
        //routes.MapPageRoute("idpd33", "Product-Details/{catName}/{proUrl}", "~/productDetails.aspx");
        //routes.MapPageRoute("idpl34", "Products-List/{urlCatName}/{urlSubCatName}", "~/products.aspx");

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
