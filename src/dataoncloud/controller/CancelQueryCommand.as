package	 dataoncloud.controller
{
    import dataoncloud.model.SqlProxy;
    import dataoncloud.model.vo.MySQLQuery;
    
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;
    import org.puremvc.as3.patterns.observer.*;
    
    /**
     * Create and register <code>Proxy</code>s with the <code>Model</code>.
     */
    public class CancelQueryCommand extends SimpleCommand
    {
        override public function execute( note:INotification ) :void    
        {       
			var sqlProxy:SqlProxy = facade.retrieveProxy(SqlProxy.NAME) as SqlProxy;
			sqlProxy.cancelQuery();
        }
    }

}