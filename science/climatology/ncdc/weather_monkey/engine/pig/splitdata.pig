register '/home/hohyon/pig-0.8.0-cdh3u0/contrib/piggybank/java/piggybank.jar';
--SET default_parallel 30

c= LOAD '$OUTPUT';

STORE c INTO '$SPLITTED_OUTPUT' USING org.apache.pig.piggybank.storage.MultiStorage('$SPLITTED_OUTPUT', '$SPLIT_BY', 'none', '\\t');

