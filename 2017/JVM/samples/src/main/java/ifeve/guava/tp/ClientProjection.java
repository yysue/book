package ifeve.guava.tp;

class ClientProjection implements EventConsumer {

    @Override
    public Event consume(Event event) {
        Sleeper.randSleep(10, 1);//译者：这里只是用睡眠来代替实际编程中一些耗时的操作
        return event;
    }

}
