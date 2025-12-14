import {
    OPCUAClient,
    AttributeIds,
    ClientSession,
    DataType,
} from "node-opcua";

// 1. Configuración básica
const endpointUrl = 'opc.tcp://192.168.0.1:4840';

async function main() {
    const client = OPCUAClient.create({
        endpointMustExist: false
    });

    let session: ClientSession | null = null;

    try {
        // 2. Conectar al servidor
        await client.connect(endpointUrl);
        console.log("✅ Conectado al servidor OPC UA");

        // 3. Crear una sesión
        session = await client.createSession();
        console.log("✅ Sesión creada");

        // 4. Leer un valor
        const nodeId = 'ns=3;s="Motor1_DB"."Habilitado"';
        const dataValueRead = await session.read({
            nodeId: nodeId,
            attributeId: AttributeIds.Value
        });
        console.log("📥 Valor leído -> Motor1_DB.Habilitado:", dataValueRead.value.value);

         // 5. Escribir una variable
     
        const valueToWrite = true; 
        
        const dataValueWrite = {
        value: {
            dataType: DataType.Boolean,
            value: valueToWrite
        }
        };
        
        
        const statusCode = await session.write({
        nodeId: nodeId,
        attributeId: AttributeIds.Value,
        value: dataValueWrite
        });
        
        console.log("✏️ Resultado de la escritura:", statusCode.toString());

    } catch (error) {
        console.error("❌ Error:", error);
    } finally {
        // 6. Cerrar sesión y desconectar
        if (session) {
            await session.close();
            console.log("🚪 Sesión cerrada");
        }
        await client.disconnect();
        console.log("🔌 Cliente desconectado");
    }
}

main();
