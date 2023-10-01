import rclpy
from rclpy.executors import ExternalShutdownException
from rclpy.node import Node

from std_msgs.msg import String

class Listener(Node):

    def __init__(self):
        super().__init__('Mayo')  # Replace 'your_last_name' with your actual last name
        self.sub = self.create_subscription(String, 'chatter', self.chatter_callback, 10)
        self.my_first_name = "Stephanie"  # Replace with your first name

    def chatter_callback(self, msg):
        self.get_logger().info(f'I heard: [{msg.data}] - My first name is: {self.my_first_name}')

def main(args=None):
    rclpy.init(args=args)

    node = Listener()
    try:
        rclpy.spin(node)
    except (KeyboardInterrupt, ExternalShutdownException):
        pass
    finally:
        node.destroy_node()
        rclpy.try_shutdown()

if __name__ == '__main__':
    main()
