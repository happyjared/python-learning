import tensorflow as tf

hello = tf.constant('hello', dtype=tf.string)

with tf.Session() as session:
    res = session.run(hello).decode('UTF-8')
    print(res)
    print(type(res))
