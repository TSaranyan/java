package thirikkale.util.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import thirikkale.data.PartnerDao;
import thirikkale.model.Partner;

public class PartnerValidator implements Validator  {

	//Partner objects can be validated by this validator
	@Override
	public boolean supports(Class<?> paramClass) {
		return Partner.class.equals(paramClass);
	}

	@Override
	public void validate(Object obj, Errors errors) {

		Partner partner = (Partner) obj;
		try {
			if(PartnerDao.isPartnerExist(partner)){
				errors.rejectValue("email", "partnerValidationFailed", new Object[]{"'email'"}, "E-mail address already exist.");
			}
		}
		catch (Exception e) {
			errors.rejectValue("email", "partnerValidationFailed", new Object[]{"'email'"},e.getMessage());
		}

	}
}
