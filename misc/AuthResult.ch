package choral.OOPSLA.AuthResult;

import choral.OOPSLA.BiPair.BiPair1;
import choral.OOPSLA.BiPair.BiPair2;
import choral.OOPSLA.DistAuthUtils.AuthToken;
import java.util.Optional;

public class AuthResult@( A, B ) extends
	BiPair@( A, B )< Optional@A< AuthToken >, Optional@B< AuthToken > > {

	public AuthResult( AuthToken@A t1, AuthToken@B t2 ) {
		super( Optional@A.< AuthToken >of( t1 ), Optional@B.< AuthToken >of( t2 ) );
	}

	public AuthResult(){
		super( Optional@A.< AuthToken >empty(), Optional@B.< AuthToken >empty() );
	}

}
