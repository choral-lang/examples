package choral.examples.ConsumeItems;

import org.choral.lang.Channels.DiChannel1;
import org.choral.lang.Channels.DiChannel2;
import java.util.function.Consumer;
import java.util.Iterator;

enum ConsumeChoice@R { AGAIN, STOP }

class ConsumeItems@( A, B ) {

	public static void consumeItems( DiChannel@( A, B )< Integer > ch, Iterator@A< Integer > it, Consumer@B< Integer > consumer ){
		if ( it.hasNext() ){
			select( ConsumeChoice@A.AGAIN, ch );
			it.next() >> ch::< Integer > com >> consumer::accept;
			consumeItems( ch, it, consumer );
		} else {
			select( ConsumeChoice@A.STOP, ch );
		}
    }
}
