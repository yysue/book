package ifeve.guava.tp;

import java.util.Random;
import java.util.concurrent.TimeUnit;

class Sleeper {

    private static final Random RANDOM = new Random();

    static void randSleep(double mean, double stdDev) {
        final double micros = 1000 * (mean + RANDOM.nextGaussian() * stdDev);
        try {
            TimeUnit.MICROSECONDS.sleep((long) micros);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

}

//...

//EventStream es = new EventStream();  //some real implementation here
//es.consume(new ClientProjection());
