exports.handler = async function(event) {
    console.log("request:", JSON.stringify(event, undefined, 2));
    if(event.path === null) {
        return {
            statusCode: 400,
            headers: { "Content-Type": "text/plain" },
            body: `Not allowed.\n`
        }
    }
    console.log("path:", JSON.stringify(event.path, undefined, 2));

    if(event.path === 'ping') {
        return {
            statusCode: 200,
            headers: { "Content-Type": "text/plain" },
            body: `ping OK\n`
        };
    }

    return {
        statusCode: 200,
        headers: { "Content-Type": "text/plain" },
        body: `Hello OK: ${event.path}\n`
    };
};
