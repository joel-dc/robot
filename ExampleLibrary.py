class ExampleLibrary:

    ROBOT_LIBRARY_SCOPE = 'TEST CASE'

    def __init__(self):
        self._counter = 0

    def count(self):
        self._counter += 1
        return self._counter

    def clear_counter(self):
        self._counter = 0
        return self._counter

    def get_counter(self):
        return self._counter

    def hello(self, name):
        return "Hello, " + name

    def hello_world(self):
        return "hello world"