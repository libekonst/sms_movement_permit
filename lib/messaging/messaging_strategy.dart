abstract class MessagingStrategy {
  Future<bool> send(String receiver, String message);
}
