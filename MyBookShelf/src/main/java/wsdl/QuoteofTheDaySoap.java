
package wsdl;

import javax.jws.WebMethod;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebService(name = "QuoteofTheDaySoap", targetNamespace = "http://swanandmokashi.com")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface QuoteofTheDaySoap {


    /**
     * Returns a funny random quote and its author.
     * 
     * @return
     *     returns wsdl.Quotes
     */
    @WebMethod(operationName = "GetQuote", action = "http://swanandmokashi.com/GetQuote")
    @WebResult(name = "GetQuoteResult", targetNamespace = "http://swanandmokashi.com")
    @RequestWrapper(localName = "GetQuote", targetNamespace = "http://swanandmokashi.com", className = "wsdl.GetQuote")
    @ResponseWrapper(localName = "GetQuoteResponse", targetNamespace = "http://swanandmokashi.com", className = "wsdl.GetQuoteResponse")
    public Quotes getQuote();

}
