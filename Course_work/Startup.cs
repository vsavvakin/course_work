using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Course_work.Startup))]
namespace Course_work
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
