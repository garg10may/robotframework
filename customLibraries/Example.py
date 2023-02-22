from robot.api.deco import library, keyword


class Example:
    def __init__(self) -> None:
        pass

    @keyword
    def helloWorld(self):
        print("Hello world")
