#pragma checksum "C:\Worksapce\Dot.netCoreSample\AdminTemplate\AdminTemplate\Views\Shared\_MainMenu.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "f90a9a81e911a6cc770c9505e44e1968e5fb1e7d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared__MainMenu), @"mvc.1.0.view", @"/Views/Shared/_MainMenu.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Shared/_MainMenu.cshtml", typeof(AspNetCore.Views_Shared__MainMenu))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f90a9a81e911a6cc770c9505e44e1968e5fb1e7d", @"/Views/Shared/_MainMenu.cshtml")]
    public class Views_Shared__MainMenu : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(0, 655, true);
            WriteLiteral(@"<ul class=""sidebar-menu"" data-widget=""tree"">
<li class=""header"">HEADER</li>
<!-- Optionally, you can add icons to the links -->
<li class=""active""><a href=""#""><i class=""fa fa-link""></i> <span>Link</span></a></li>
<li><a href=""#""><i class=""fa fa-link""></i> <span>Another Link</span></a></li>
<li class=""treeview"">
    <a href=""#""><i class=""fa fa-link""></i> <span>Multilevel</span>
    <span class=""pull-right-container"">
        <i class=""fa fa-angle-left pull-right""></i>
        </span>
    </a>
    <ul class=""treeview-menu"">
    <li><a href=""#"">Link in level 2</a></li>
    <li><a href=""#"">Link in level 2</a></li>
    </ul>
</li>
</ul>");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
