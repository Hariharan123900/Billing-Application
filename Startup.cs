using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Billing_Application.Startup))]
namespace Billing_Application
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
