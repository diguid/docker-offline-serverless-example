import json
import wikipedia


def handler(event, context):
    body = json.loads(event['body'])
    print(f'Request body: {body}')
    print(f'Requested endpoint: {event["path"]}')

    topic = body['topic']
    return {
        'statusCode': 200,
        'body': json.dumps(
            {'search_results': wikipedia.search(topic)}
        )
    }
