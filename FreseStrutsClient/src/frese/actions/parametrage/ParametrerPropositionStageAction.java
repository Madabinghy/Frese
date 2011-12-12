package frese.actions.parametrage;

import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import com.opensymphony.xwork2.ActionSupport;
import frese.parametrage.beans.GestionModelePropositionDeStageRemote;
import frese.parametrage.entities.AttributModele;
import frese.parametrage.entities.ModelePropositionDeStage;
import frese.parametrage.entities.TypeAttribut;

public class ParametrerPropositionStageAction extends ActionSupport{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public TypeAttribut[] getLesTypesAttribut() {
		return lesTypesAttribut.values();
	}

	public void setLesTypesAttribut(TypeAttribut lesTypesAttribut) {
		this.lesTypesAttribut = lesTypesAttribut;
	}

	private ModelePropositionDeStage leModele;
	private TypeAttribut lesTypesAttribut;
	private int idModele;

	public int getIdModele() {
		return idModele;
	}

	public void setIdModele(int idModele) {
		this.idModele = idModele;
	}

	GestionModelePropositionDeStageRemote gestionPropositions;

    public List<AttributModele> getLesAttributs()
    {
    	if(leModele!=null)
    		return leModele.getLesAttributs();
		return null;
    }

    public String execute(){
    	Context ctx;
    	
		try {
			ctx = new InitialContext();
			gestionPropositions = (GestionModelePropositionDeStageRemote) ctx.lookup("GestionModelePropositionDeStageBean/remote");
			leModele = gestionPropositions.getModelePropositionDeStageById(1);//idModele
		} catch (NamingException e) {
			return SUCCESS;
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		catch (Exception e) {
			// TODO: handle exception
			return SUCCESS;
		}

		return SUCCESS;
	}

}