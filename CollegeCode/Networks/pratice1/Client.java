import java.util.Scanner;
import java.net.Socket;

class Client{
    public static void main(String[] args) {

        System.out.println("Forneça o ip: ");
        Scanner sc = new Scanner(System.in);
        String ip = sc.nextLine();
   
        try {

            Socket client = new Socket(ip, 7658);
            
            Scanner s = new Scanner(client.getInputStream());
            while (s.hasNextLine()) {
                System.out.println(s.nextLine());
            }

            client.close();


        } catch (Exception e) {
            System.out.println(e);
        }
        

    }
}

