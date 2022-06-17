import org.springframework.boot.web.embedded.tomcat.TomcatConnectorCustomizer;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.context.annotation.Configuration;

@Configuration
public class TomcatWebCustomConfig implements WebServerFactoryCustomizer<TomcatServletWebServerFactory> {
    @Override
    public void customize(TomcatServletWebServerFactory factory) {
        TomcatConnectorCustomizer a = null;
        factory.addConnectorCustomizers(connector -> {
            connector.setAttribute("relaxedPathChars", "<>[\\]^`{|},\"");
            connector.setAttribute("relaxedQueryChars", "<>[\\]^`{|},\"");
        });
    }
}