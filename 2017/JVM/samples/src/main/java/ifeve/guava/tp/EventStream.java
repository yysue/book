package ifeve.guava.tp;

// @Value
interface EventStream {

    void consume(EventConsumer consumer);

}
